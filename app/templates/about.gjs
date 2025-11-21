import { pageTitle } from 'ember-page-title';

<template>
  {{pageTitle "Nosotros"}}

  <div class="max-w-6xl mx-auto px-4 py-16">

    {{! Sección Principal: Historia + Imagen }}
    <div class="flex flex-col lg:flex-row items-center gap-12 mb-20">

      {{! Columna Texto }}
      <div class="lg:w-1/2 space-y-6">
        <span
          class="inline-block py-1 px-3 rounded-lg bg-blue-50 text-blue-600 text-xs font-bold uppercase tracking-widest"
        >
          Nuestra Historia
        </span>
        <h2
          class="text-4xl md:text-5xl font-black text-slate-900 leading-tight"
        >
          Revolucionando el e-commerce con
          <span class="text-rose-600">Código Moderno</span>.
        </h2>
        <p class="text-lg text-slate-600 leading-relaxed">
          Esta aplicación no es solo una tienda, es una demostración de
          ingeniería. Construida utilizando la
          <strong>Polaris Edition</strong>
          de Ember.js, eliminamos la complejidad innecesaria para ofrecer una
          experiencia de usuario fluida y rápida.
        </p>
        <p class="text-lg text-slate-600 leading-relaxed">
          Al igual que en React, ahora utilizamos
          <strong>archivos .gjs</strong>
          e imports explícitos, lo que nos permite mantener un código limpio,
          modular y fácil de escalar.
        </p>
      </div>

      {{! Columna Imagen }}
      <div class="lg:w-1/2 relative">
        <div
          class="absolute -inset-4 bg-gradient-to-r from-rose-500 to-orange-400 rounded-2xl opacity-30 blur-lg transform rotate-2"
        ></div>
        <img
          src="https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=2070&auto=format&fit=crop"
          alt="Equipo de Desarrollo"
          class="relative rounded-2xl shadow-2xl w-full object-cover h-96 border-4 border-white"
        />
      </div>
    </div>

    {{! Sección Tech Stack }}
    <div class="bg-slate-50 rounded-3xl p-10 border border-slate-100">
      <h3
        class="text-center text-2xl font-bold text-slate-800 mb-10"
      >Tecnologías Utilizadas</h3>

      <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
        {{! Tech Card 1 }}
        <div
          class="bg-white p-6 rounded-xl shadow-sm flex flex-col items-center justify-center text-center hover:shadow-md transition-shadow"
        >
          <div class="text-4xl mb-2">🐹</div>
          <h4 class="font-bold text-slate-900">Ember.js</h4>
          <p class="text-xs text-slate-500">Polaris Edition</p>
        </div>

        {{! Tech Card 2 }}
        <div
          class="bg-white p-6 rounded-xl shadow-sm flex flex-col items-center justify-center text-center hover:shadow-md transition-shadow"
        >
          <div class="text-4xl mb-2">🌊</div>
          <h4 class="font-bold text-slate-900">Tailwind CSS</h4>
          <p class="text-xs text-slate-500">Utility-First</p>
        </div>

        {{! Tech Card 3 }}
        <div
          class="bg-white p-6 rounded-xl shadow-sm flex flex-col items-center justify-center text-center hover:shadow-md transition-shadow"
        >
          <div class="text-4xl mb-2">⚡</div>
          <h4 class="font-bold text-slate-900">Vite</h4>
          <p class="text-xs text-slate-500">Build Tool</p>
        </div>

        {{! Tech Card 4 }}
        <div
          class="bg-white p-6 rounded-xl shadow-sm flex flex-col items-center justify-center text-center hover:shadow-md transition-shadow"
        >
          <div class="text-4xl mb-2">⚛️</div>
          <h4 class="font-bold text-slate-900">Glimmer JS</h4>
          <p class="text-xs text-slate-500">Componentes</p>
        </div>
      </div>
    </div>

  </div>
</template>
