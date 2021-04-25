<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | The following language lines contain the default error messages used by
    | the validator class. Some of these rules avoir multiple versions such
    | as the size rules. Feel free to tweak each of these messages here.
    |
    */
    'error' => 'Oops, une erreur est survenue.',
    'accepted' => 'Le :attribute doit être accepté.',
    'active_url' => 'Le :attribute n\'est pas une URL valide.',
    'after' => 'Le :attribute doit être une date après :date.',
    'after_or_equal' => 'Le :attribute doit être une date après ou égale à :date.',
    'alpha' => 'Le :attribute doit uniquement contenir des lettres.',
    'alpha_dash' => 'Le :attribute doit uniquement contenir des lettres, nombres, tirets et underscores.',
    'alpha_num' => 'Le :attribute doit uniquement contenir des lettres et nombres.',
    'array' => 'Le :attribute doit être un tableau.',
    'before' => 'Le :attribute doit être une date avant :date.',
    'before_or_equal' => 'Le :attribute doit être un date avant ou égale à :date.',
    'between' => [
        'numeric' => 'Le :attribute doit être entre :min et :max.',
        'file' => 'Le :attribute doit être entre :min et :max kilobytes.',
        'string' => 'Le :attribute doit être entre :min et :max caractères.',
        'array' => 'Le :attribute doit avoir entre :min et :max éléments.',
    ],
    'boolean' => 'Le champ :attribute doit être vrai ou faux.',
    'confirmed' => 'Le :attribute confirmation ne correspond pas.',
    'date' => 'Le :attribute n\'est pas un valid date.',
    'date_equals' => 'Le :attribute doit être un date equal to :date.',
    'date_format' => 'Le :attribute ne correspond pas avec le format :format.',
    'different' => 'Le :attribute et :other doivent être differents.',
    'digits' => 'Le :attribute doit faire :digits chiffres.',
    'digits_between' => 'Le :attribute doit faire entre :min et :max chiffres.',
    'dimensions' => 'Le :attribute a des dimensions invalide.',
    'distinct' => 'Le champ :attribute a une valeur dupliquée.',
    'email' => 'Le :attribute doit être un  addressevalid eemail.',
    'ends_with' => 'Le :attribute doit finir avec une des valeurs suivantes: :values.',
    'exists' => 'Le selected :attribute est invalide.',
    'file' => 'Le :attribute doit être un fichier.',
    'filled' => 'Le champ :attribute doit avoir une valeur.',
    'gt' => [
        'numeric' => 'Le :attribute doit être supérieur à :value.',
        'file' => 'Le :attribute doit être supérieur à :value kilobytes.',
        'string' => 'Le :attribute doit être supérieur à :value caractères.',
        'array' => 'Le :attribute doit avoir plus que :value éléments.',
    ],
    'gte' => [
        'numeric' => 'Le :attribute doit être supérieur ou égal à :value.',
        'file' => 'Le :attribute doit être supérieur ou égal à :value kilobytes.',
        'string' => 'Le :attribute doit être supérieur ou égal à :value caractères.',
        'array' => 'Le :attribute doit avoir :value éléments ou plus.',
    ],
    'image' => 'Le :attribute doit être une image.',
    'in' => 'Le :attribute séléctionné est invalide.',
    'in_array' => 'Le champ :attribute n\'existe pas dans dans :other.',
    'integer' => 'Le :attribute doit être un entier.',
    'ip' => 'Le :attribute doit être une adresse IP valide.',
    'ipv4' => 'Le :attribute doit être une addresse IPv4 valide.',
    'ipv6' => 'Le :attribute doit être une addresse IPv6 valide.',
    'json' => 'Le :attribute doit être au format JSON.',
    'lt' => [
        'numeric' => 'Le :attribute doit être inférieur à :value.',
        'file' => 'Le :attribute doit être inférieur à :value kilobytes.',
        'string' => 'Le :attribute doit être inférieur à :value caractères.',
        'array' => 'Le :attribute doit avoir inférieur à :value éléments.',
    ],
    'lte' => [
        'numeric' => 'Le :attribute doit être inférieur ou égale à :value.',
        'file' => 'Le :attribute doit être inférieur ou égale à :value kilobytes.',
        'string' => 'Le :attribute doit être inférieur ou égale à :value caractères.',
        'array' => 'Le :attribute ne doit pas avoir plus de :value éléments.',
    ],
    'max' => [
        'numeric' => 'Le :attribute ne doit pas être supérieur à :max.',
        'file' => 'Le :attribute ne doit pas être supérieur à :max kilobytes.',
        'string' => 'Le :attribute ne doit pas être supérieur à :max caractères.',
        'array' => 'Le :attribute ne doit pas avoir plus de :max éléments.',
    ],
    'mimes' => 'Le :attribute doit être un fichier de type: :values.',
    'mimetypes' => 'Le :attribute doit être un fichier de type: :values.',
    'min' => [
        'numeric' => 'Le :attribute doit être au moins :min.',
        'file' => 'Le :attribute doit faire au moins :min kilobytes.',
        'string' => 'Le :attribute doit faire au moins :min caractères.',
        'array' => 'Le :attribute doit avoir au moins :min éléments.',
    ],
    'multiple_of' => 'Le :attribute doit être un multiple de :value.',
    'not_in' => 'Le :attribute séléctionné est invalide.',
    'not_regex' => 'Le format de :attribute est invalide.',
    'numeric' => 'Le :attribute doit être un nombre.',
    'password' => 'Le mot de passe est incorrect.',
    'present' => 'Le champ :attribute doit être présent.',
    'regex' => 'Le format de :attribute est invalide.',
    'required' => 'Le champ :attribute est requis.',
    'required_if' => 'Le champ :attribute est requis quand :other est :value.',
    'required_unless' => 'Le champ :attribute est requis sauf si :other est dans :values.',
    'required_with' => 'Le champ :attribute est requis quand :values est présent.',
    'required_with_all' => 'Le champ :attribute est requis quand :values sont présents.',
    'required_without' => 'Le champ :attribute est requis quand :values n\'est pas présent.',
    'required_without_all' => 'Le champ :attribute est requis quand aucuns des :values ne sont présents.',
    'same' => 'Le :attribute et :other doivent correspondre.',
    'size' => [
        'numeric' => 'Le :attribute doit être :size.',
        'file' => 'Le :attribute doit être :size kilobytes.',
        'string' => 'Le :attribute doit être :size caractères.',
        'array' => 'Le :attribute doit contenir :size éléments.',
    ],
    'starts_with' => 'Le :attribute doit commencer avec une des valeurs suivantes: :values.',
    'string' => 'Le :attribute doit être une chaîne de caractères.',
    'timezone' => 'Le :attribute doit être une zone valide.',
    'unique' => 'Le :attribute existe déjà.',
    'uploaded' => 'Le :attribute n\'a pas pu être uploadé.',
    'url' => 'Le format de :attribute est invalide.',
    'uuid' => 'Le :attribute doit être un UUID valide.',

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Language Lines
    |--------------------------------------------------------------------------
    |
    | Here you may specify custom validation messages for attributes using Le
    | convention "attribute.rule" to name Le lines. Thest makes it quick to
    | specify un specific custom language line for un given attribute rule.
    |
    */

    'custom' => [
        'attribute-name' => [
            'rule-name' => 'custom-message',
        ],
    ],

    /*
    |--------------------------------------------------------------------------
    | Custom Validation Attributes
    |--------------------------------------------------------------------------
    |
    | Le following language lines are used to swap our attribute placeholder
    | with something more reader frifinirly such Addresse as "Ee-Mail" instead
    | of "email". Thest simply helps us make our message more expressive.
    |
    */

    'attributes' => [],

];
