const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
    purge: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
        extend: {
            //typography
            fontFamily: {
                sans: ['Nunito', ...defaultTheme.fontFamily.sans],
            },
            //Theme colors
            colors: {
                transparent: 'transparent',
                black: '#000',
                white: '#fff',
                gray: {
                  100: '#f7fafc',
                  // ...
                  900: '#1a202c',
                },
            },
        },

    variants: {
        extend: {
            borderColor: ['focus-visible'],
            opacity: ['disabled'],
        },
    },

    plugins: [
        require('@tailwindcss/forms'),
        require('@tailwindcss/aspect-ratio'),
        require('@tailwindcss/typography'),
        require('tailwindcss-children'),
      ],
};
