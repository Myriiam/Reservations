<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Paiement de votre réservation de spectacle') }}
        </h2>
    </x-slot>
    <div class="bg-contain bg-no-repeat bg-right-bottom h-screen" style="background-image: url({{ asset('images/pay.png') }});">
        <div class="flex items-center justify-center">


    <div class="bg-white  px-8 pt-6 pb-8 mb-4 flex flex-col my-2 sm:w-4/5 md:w-3/5 mx-auto   p-10 mt-20 rounded-lg shadow-lg overflow-hidden">
      <form role="form" action="{{ route('payment', Auth()->user()->id) }}" method="post" class="validation"
      data-cc-on-file="false"
          data-stripe-publishable-key="{{ env('STRIPE_KEY') }}"
              id="payment-form">
      @csrf
        <div class="-mx-3 md:flex mb-6">
          <div class="required md:w-1/2 px-3 mb-6 md:mb-0">
            <label class="block uppercase tracking-wide text-grey-darker text-xs font-bold mb-2" for="grid-first-name">
              Nom du titulaire de la carte
            </label>
            <input class="appearance-none block w-full bg-grey-lighter text-grey-darker border border-red rounded py-3 px-4 mb-3" type="text" placeholder="Jean Luc Dupond" value="{{ Auth()->user()->firstname }}">
            <p class="text-red text-xs italic">Veuillez remplir tous les champs.</p>
          </div>
          <div class="required md:w-1/2 px-3">
            <label class="block uppercase tracking-wide text-grey-darker text-xs font-bold mb-2" for="grid-last-name">
              Numéro de la carte
            </label>
            <input class="card-num appearance-none block w-full bg-grey-lighter text-grey-darker border border-grey-lighter rounded py-3 px-4" type="text" placeholder="4242424242424242" value="{{ Auth()->user()->stripe_id }}">
          </div>
        </div>
        <div class="required -mx-3 md:flex mb-2">
          <div class="md:w-1/2 px-3 mb-6 md:mb-0">
            <label class="block uppercase tracking-wide text-grey-darker text-xs font-bold mb-2" for="grid-city">
              CVC
            </label>
            <input class="card-cvc appearance-none block w-full bg-grey-lighter text-grey-darker border border-grey-lighter rounded py-3 px-4" type="text" placeholder="415" value="{{ Auth()->user()->card_brand }}">
          </div>
          <div class="required md:w-1/2 px-3">
            <label class="block uppercase tracking-wide text-grey-darker text-xs font-bold mb-2" for="grid-state">
              Mois d'expiration
            </label>
            <input class="card-expiry-month appearance-none block w-full bg-grey-lighter text-grey-darker border border-grey-lighter rounded py-3 px-4" type="text" placeholder="11" value="{{ date('m', strtotime(Auth()->user()->trial_ends_at)) }}">
          </div>
          <div class="required md:w-1/2 px-3">
            <label class="block uppercase tracking-wide text-grey-darker text-xs font-bold mb-2" for="grid-zip">
              Année d'expiration
            </label>
            <input class="card-expiry-year appearance-none block w-full bg-grey-lighter text-grey-darker border border-grey-lighter rounded py-3 px-4" type="text" placeholder="2027" value="{{ date('Y', strtotime(Auth()->user()->trial_ends_at)) }}">
          </div>
        </div>
        <div class="inline-flex mt-5">
          <div>
              <button class="px-6 py-2 border border-transparent rounded-md shadow-sm text-base font-medium text-white bg-red-800 hover:bg-red-700" type="submit">Payer</button>
          </div>
      </div>
    </form>
  </div>

  </div>
  </div>

<!-- Stripe -->

<script type="text/javascript" src="https://js.stripe.com/v2/"></script>

<script type="text/javascript">
$(function() {
    var $form         = $(".validation");
  $('form.validation').bind('submit', function(e) {
    var $form         = $(".validation"),
        inputVal = ['input[type=email]', 'input[type=password]',
                         'input[type=text]', 'input[type=file]',
                         'textarea'].join(', '),
        $inputs       = $form.find('.required').find(inputVal),
        $errorStatus = $form.find('div.error'),
        valid         = true;
        $errorStatus.addClass('hide');

        $('.has-error').removeClass('has-error');
    $inputs.each(function(i, el) {
      var $input = $(el);
      if ($input.val() === '') {
        $input.parent().addClass('has-error');
        $errorStatus.removeClass('hide');
        e.preventDefault();
      }
    });

    if (!$form.data('cc-on-file')) {
      e.preventDefault();
      Stripe.setPublishableKey($form.data('stripe-publishable-key'));
      Stripe.createToken({
        number: $('.card-num').val(),
        cvc: $('.card-cvc').val(),
        exp_month: $('.card-expiry-month').val(),
        exp_year: $('.card-expiry-year').val()
      }, stripeHandleResponse);
    }

  });

  function stripeHandleResponse(status, response) {
        if (response.error) {
            $('.error')
                .removeClass('hide')
                .find('.alert')
                .text(response.error.message);
        } else {
            var token = response['id'];
            $form.find('input[type=text]').empty();
            $form.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
            $form.get(0).submit();
        }
    }

});
</script>
</x-app-layout>
