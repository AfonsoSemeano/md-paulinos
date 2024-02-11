/** @type {import('tailwindcss').Config} */
export default {
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'm-blue':'#3e347b',
      }
    },
  },  
  daisyui: {
    themes: [
      {
        whiteTheme: {
          "primary": "#ffffff",
          'primary-focus': '#f1f1f1',
          'primary-content': '#ffffff',
          "secondary": "#f1f1f1",
          'secondary-focus': '#bd0091',
          'secondary-content': '#ffffff',
          "accent": "#000000",
          'accent-focus': '#2aa79b',
          'accent-content': '#ffffff',
          "neutral": "#ffffff",
          "base-100": "#ffffff",
          "info": "#ffffff",
          "success": "#00ffff",
          "warning": "#ffffff",
          "error": "#ffffff",
        },
      },
    ],
  },
  plugins: [require("daisyui")],
}

