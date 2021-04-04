<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Booking') }}
        </h2>
    </x-slot>

    <div class="p-10">
        <p>Vous allez réserver <b>{{ $qty }}</b> {{ ($qty>1) ? "places" : "place" }} pour le spectacle <b>{{ $show->title }}</b> . Le montant total de votre réservation s'élève à <b class="text-red-800">{{ $price }}€.</b> La pièce aura lieu le <b>{{ $date }}</b></p>
        <div id="app4"> 
            <h2 class="mt-5 mb-2"><b>Paiement de votre réservation ?</b></h2>           
            <form action="{{ route('show_booking_billing', $show->id) }}" method="post">
                @method("POST")
                @csrf
                <input type="hidden" name="qty" value="{{ $qty }}">
                <input type="hidden" name="date" value="{{ $date }}">
                <input type="hidden" name="price" value="{{ $price }}">
                <p>Entrez votre numéro de carte banquaire</p>
                <input type="hidden" name="payment_method" class="payment-method">
                <input class="StripeElement mb-3" name="card_holder_name" placeholder="Card holder name" required>

                <!-- Stripe Elements Placeholder -->
                <div class="col-lg-4 col-md-6">
                    <div id="card-element"></div>
                </div>
                
                <div style="display:flex">
                    <button id="card-button" data-secret="{{ $intent->client_secret }}" type="submit" class="items-start bg-transparent hover:bg-green-500 text-green-700 font-semibold hover:text-white py-2 px-4 border border-green-500 hover:border-transparent rounded">Accepter</button>
                    <booking class="items-end mx-3 items-start bg-transparent hover:bg-red-700 text-red-700 font-semibold hover:text-white py-2 px-4 border border-red-500 hover:border-transparent rounded"></booking>
                </div>
            </form>
        </div>
    </div>

<script src="https://js.stripe.com/v3/"></script>
<script>

    let stripe = Stripe("{{ env('STRIPE_KEY') }}")
    let elements = stripe.elements()
    let style = {
        base: {
            color: '#32325d',
            fontFamily: '"Helvetica Neue", Helvetica, sans-serif',
            fontSmoothing: 'antialiased',
            fontSize: '16px',
            '::placeholder': {
                color: '#aab7c4'
            }
        },
        invalid: {
            color: '#fa755a',
            iconColor: '#fa755a'
        }
    }
    let card = elements.create('card', {style: style})
    card.mount('#card-element')
    let paymentMethod = "pm_card_visa"
    $('.card-form').on('submit', function (e) {
        console.log('alors');
        $('button.pay').attr('disabled', true)
        if (paymentMethod) {
            return true
            console.log('test0')
        }else{
            console.log('test4')
        }
        stripe.confirmCardSetup(
            "{{ $intent->client_secret }}",
            {
                payment_method: {
                    card: card,
                    billing_details: {name: $('.card_holder_name').val()}
                }
            }
        ).then(function (result) {
            if (result.error) {
                $('#card-errors').text(result.error.message)
                $('button.pay').removeAttr('disabled')
                console.log('test1')
            } else {
                paymentMethod = result.setupIntent.payment_method
                $('.payment-method').val(paymentMethod)
                $('.card-form').submit()
                console.log('test2')
            }
        })
        return false
    })
</script>

</x-app-layout>


