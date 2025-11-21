import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "Inicio"}}

  {{! HERO SECTION: Imagen Full Width }}
  <div
    class="relative h-[600px] w-full overflow-hidden flex items-center justify-center bg-slate-900"
  >

    {{! Imagen de Fondo (Absoluta) }}
    <img
      src="https://images.unsplash.com/photo-1523381210434-271e8be1f52b?q=80&w=2070&auto=format&fit=crop"
      alt="Urban Fashion"
      class="absolute inset-0 w-full h-full object-cover opacity-60"
    />

    {{! Overlay Gradiente }}
    <div
      class="absolute inset-0 bg-gradient-to-t from-slate-900 via-transparent to-slate-900/50"
    ></div>

    {{! Contenido del Hero }}
    <div
      class="relative z-10 text-center px-4 max-w-4xl mx-auto animate-fade-in-up"
    >
      <span
        class="inline-block py-1 px-4 rounded-full bg-rose-600/90 text-white text-xs font-bold tracking-widest uppercase mb-6 backdrop-blur-sm shadow-lg"
      >
        Colección Verano 2025
      </span>

      <h1
        class="text-5xl md:text-7xl font-black text-white mb-6 tracking-tight leading-tight drop-shadow-2xl"
      >
        Renueva tu
        <span
          class="text-transparent bg-clip-text bg-gradient-to-r from-rose-400 to-orange-300"
        >Estilo Urbano</span>
      </h1>

      <p
        class="text-lg md:text-xl text-gray-200 mb-10 font-light max-w-2xl mx-auto drop-shadow-md"
      >
        Descubre la fusión perfecta entre diseño minimalista y tecnología de
        alto rendimiento.
      </p>

      <div class="flex flex-col sm:flex-row gap-4 justify-center">
        <LinkTo
          @route="products"
          class="bg-rose-600 hover:bg-rose-700 text-white text-lg font-bold py-4 px-10 rounded-full shadow-xl hover:shadow-rose-600/40 transform hover:-translate-y-1 transition-all duration-200 flex items-center justify-center gap-2"
        >
          Ver Colección
          <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-5 w-5"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M17 8l4 4m0 0l-4 4m4-4H3"
            />
          </svg>
        </LinkTo>

        <LinkTo
          @route="about"
          class="bg-white/10 backdrop-blur-sm hover:bg-white/20 text-white border border-white/30 text-lg font-bold py-4 px-10 rounded-full transition-all duration-200"
        >
          Leer Historia
        </LinkTo>
      </div>
    </div>
  </div>

  {{! FEATURES SECTION }}
  <div class="max-w-7xl mx-auto px-4 py-24">
    <div class="text-center mb-16">
      <h2 class="text-3xl md:text-4xl font-bold text-slate-900 mb-4">¿Por qué
        EmberShop?</h2>
      <p class="text-slate-500 max-w-xl mx-auto">Construimos más que una tienda,
        construimos una experiencia tecnológica.</p>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-3 gap-8">

      {{! Card 1 }}
      <div
        class="group bg-white p-8 rounded-3xl shadow-lg border border-slate-100 hover:border-rose-100 hover:shadow-2xl hover:-translate-y-2 transition-all duration-300"
      >
        <div
          class="w-14 h-14 bg-blue-50 rounded-2xl flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform duration-300"
        >
          🚀
        </div>
        <h3 class="text-xl font-bold text-slate-900 mb-3">Tecnología GJS</h3>
        <p class="text-slate-500 leading-relaxed">
          Nuestra tienda carga instantáneamente gracias a la arquitectura
          moderna de componentes compilados.
        </p>
      </div>

      {{! Card 2 }}
      <div
        class="group bg-white p-8 rounded-3xl shadow-lg border border-slate-100 hover:border-rose-100 hover:shadow-2xl hover:-translate-y-2 transition-all duration-300"
      >
        <div
          class="w-14 h-14 bg-purple-50 rounded-2xl flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform duration-300"
        >
          🎨
        </div>
        <h3 class="text-xl font-bold text-slate-900 mb-3">Diseño React-like</h3>
        <p class="text-slate-500 leading-relaxed">
          Utilizamos la sintaxis declarativa que ya conoces, con imports
          explícitos y JSX nativo.
        </p>
      </div>

      {{! Card 3 }}
      <div
        class="group bg-white p-8 rounded-3xl shadow-lg border border-slate-100 hover:border-rose-100 hover:shadow-2xl hover:-translate-y-2 transition-all duration-300"
      >
        <div
          class="w-14 h-14 bg-orange-50 rounded-2xl flex items-center justify-center text-3xl mb-6 group-hover:scale-110 transition-transform duration-300"
        >
          ⚡
        </div>
        <h3 class="text-xl font-bold text-slate-900 mb-3">FastBoot Ready</h3>
        <p class="text-slate-500 leading-relaxed">
          Optimizado para motores de búsqueda (SEO) y rendimiento extremo en
          móviles.
        </p>
      </div>

    </div>
  </div>

  {{! BANNER SECUNDARIO }}
  <div class="bg-slate-900 py-20 relative overflow-hidden">
    <div
      class="absolute top-0 left-0 w-full h-full opacity-10 bg-[url('https://www.transparenttextures.com/patterns/cubes.png')]"
    ></div>
    <div class="max-w-5xl mx-auto px-4 text-center relative z-10">
      <h2 class="text-3xl md:text-4xl font-bold text-white mb-6">Únete a la
        revolución de la moda digital</h2>
      <p class="text-slate-400 mb-8 text-lg">Recibe ofertas exclusivas y
        novedades sobre nuestra plataforma.</p>
      <LinkTo
        @route="products"
        class="inline-block bg-white text-slate-900 font-bold py-3 px-8 rounded-full hover:bg-gray-100 transition-colors"
      >
        Ir a la Tienda
      </LinkTo>
    </div>
  </div>
</template>
