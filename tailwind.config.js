// export const content = [
//   './app/views/layouts/application.html.erb',
//   './app/views/static_pages/about.html.erb',
//   './app/views/static_pages/contact.html.erb',
//   './app/views/static_pages/home.html.erb',
// ];
export const theme = {
  container: {
    padding: {
      DEFAULT: '1rem',
      sm: '2rem',
      lg: '4rem',
      xl: '5rem',
      '2xl': '6rem',
      extend: {
        fontFamily: {
          'sans': ['Proxima Nova', ...defaultTheme.fontFamily.sans]
        },
      },
      plugins: [
        require('@tailwindcss/forms'),
      ],
    }
  }
};