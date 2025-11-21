import { pageTitle } from 'ember-page-title';
import { LinkTo } from '@ember/routing';

<template>
  {{pageTitle "EmberShop 2025"}}

  <div class="min-h-screen flex flex-col bg-slate-50 font-sans text-slate-900">
    
    {{!-- NAVBAR: Efecto Glassmorphism Sticky --}}
    <nav class="sticky top-0 z-50 w-full bg-white/80 backdrop-blur-md border-b border-slate-200 shadow-sm transition-all duration-300">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between items-center h-20">
          
          {{!-- Logo con Gradiente --}}
          <div class="flex-shrink-0 flex items-center gap-2">
            <span class="text-3xl">👗</span>
            <span class="text-2xl font-black tracking-tighter text-transparent bg-clip-text bg-gradient-to-r from-rose-600 to-violet-600">
              EmberShop
            </span>
          </div>

          {{!-- Enlaces Desktop --}}
          <div class="hidden md:flex space-x-8 items-center">
            <LinkTo @route="index" class="text-slate-600 hover:text-rose-600 font-medium transition-colors text-sm uppercase tracking-wide">
              Inicio
            </LinkTo>
            <LinkTo @route="products" class="text-slate-600 hover:text-rose-600 font-medium transition-colors text-sm uppercase tracking-wide">
              Tienda
            </LinkTo>
            <LinkTo @route="about" class="text-slate-600 hover:text-rose-600 font-medium transition-colors text-sm uppercase tracking-wide">
              Nosotros
            </LinkTo>
            
            {{!-- Botón simulado de Carrito --}}
            <button type="button" class="bg-slate-900 text-white px-5 py-2 rounded-full text-sm font-bold hover:bg-slate-800 transition-transform active:scale-95">
              Carrito (0)
            </button>
          </div>
        </div>
      </div>
    </nav>

    {{!-- CONTENIDO PRINCIPAL --}}
    <main class="flex-grow">
      {{outlet}}
    </main>

    {{!-- FOOTER MODERNO --}}
    <footer class="bg-slate-900 text-slate-300 py-12 mt-auto">
      <div class="max-w-7xl mx-auto px-4 grid grid-cols-1 md:grid-cols-3 gap-8">
        <div>
          <h4 class="text-white font-bold text-lg mb-4">EmberShop</h4>
          <p class="text-sm leading-relaxed text-slate-400">
            Redefiniendo el comercio electrónico con la velocidad de Glimmer JS y la elegancia de Tailwind.
          </p>
        </div>
        <div>
          <h4 class="text-white font-bold text-lg mb-4">Enlaces Rápidos</h4>
          <ul class="space-y-2 text-sm">
            <li><a href="#" class="hover:text-rose-400 transition-colors">Envíos y Devoluciones</a></li>
            <li><a href="#" class="hover:text-rose-400 transition-colors">Guía de Tallas</a></li>
            <li><a href="#" class="hover:text-rose-400 transition-colors">Contacto</a></li>
          </ul>
        </div>
        <div>
          <h4 class="text-white font-bold text-lg mb-4">Suscríbete</h4>
          <div class="flex gap-2">
            <input type="email" placeholder="Tu correo" class="w-full px-4 py-2 rounded-lg bg-slate-800 border border-slate-700 focus:outline-none focus:border-rose-500 transition-colors" />
            <button type="button" class="bg-rose-600 text-white px-4 py-2 rounded-lg hover:bg-rose-700 font-bold">Ir</button>
          </div>
        </div>
      </div>
      <div class="border-t border-slate-800 mt-12 pt-8 text-center text-xs text-slate-500">
        © 2025 Proyecto de Ingeniería de Sistemas.
      </div>
    </footer>

  </div>
</template>