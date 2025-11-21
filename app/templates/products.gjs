import { pageTitle } from 'ember-page-title';

// Función auxiliar para formato de moneda
const formatCurrency = (value) => `Bs. ${value}`;

<template>
  {{pageTitle "Tienda"}}
  
  {{!-- Encabezado de la sección --}}
  <div class="bg-white shadow-sm border-b border-slate-200 py-8 mb-8">
    <div class="max-w-7xl mx-auto px-4 flex flex-col md:flex-row justify-between items-end">
      <div>
        <h2 class="text-3xl font-black text-slate-900 tracking-tight">Nuestra Colección</h2>
        <p class="text-slate-500 mt-2">Ropa urbana de alta calidad seleccionada para ti.</p>
      </div>
      
      {{!-- Filtros visuales (Solo estéticos por ahora) --}}
      <div class="flex gap-2 mt-4 md:mt-0">
        <button type="button" class="px-4 py-2 bg-slate-900 text-white text-sm font-medium rounded-full">Todos</button>
        <button type="button" class="px-4 py-2 bg-white border border-slate-300 text-slate-600 text-sm font-medium rounded-full hover:bg-slate-50">Hombre</button>
        <button type="button" class="px-4 py-2 bg-white border border-slate-300 text-slate-600 text-sm font-medium rounded-full hover:bg-slate-50">Mujer</button>
      </div>
    </div>
  </div>

  {{!-- Grid de Productos --}}
  <div class="max-w-7xl mx-auto px-4 pb-20">
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8">
      
      {{#each @model as |product|}}
        {{!-- Tarjeta del Producto --}}
        <div class="group bg-white rounded-2xl border border-slate-100 shadow-sm hover:shadow-xl hover:-translate-y-1 transition-all duration-300 overflow-hidden flex flex-col">
          
          {{!-- Contenedor Imagen --}}
          <div class="relative h-64 overflow-hidden bg-slate-100">
            {{!-- Badge de Nuevo --}}
            <span class="absolute top-3 left-3 z-10 bg-rose-500 text-white text-[10px] font-bold px-2 py-1 rounded-md uppercase tracking-wide">
              Nuevo
            </span>

            <img 
              src={{product.img}} 
              alt={{product.name}} 
              class="w-full h-full object-cover transform group-hover:scale-110 transition-transform duration-500"
            />
            
            {{!-- Botón "Vista Rápida" que aparece al hover --}}
            <div class="absolute inset-0 bg-black/20 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
               <button type="button" class="bg-white text-slate-900 px-4 py-2 rounded-full font-bold text-sm shadow-lg transform translate-y-4 group-hover:translate-y-0 transition-transform">
                 Vista Rápida
               </button>
            </div>
          </div>
          
          {{!-- Info del Producto --}}
          <div class="p-5 flex-grow flex flex-col">
            <div class="mb-auto">
              <h3 class="text-lg font-bold text-slate-800 mb-1 group-hover:text-rose-600 transition-colors">
                {{product.name}}
              </h3>
              <p class="text-xs text-slate-400 uppercase font-semibold tracking-wider">Categoría</p>
            </div>
            
            <div class="flex items-center justify-between mt-6 border-t border-slate-50 pt-4">
              <span class="text-xl font-black text-slate-900">
                {{formatCurrency product.price}}
              </span>
              
              <button type="button" class="bg-slate-900 hover:bg-rose-600 text-white p-3 rounded-xl transition-colors shadow-md flex items-center justify-center">
                {{!-- Icono Carrito SVG --}}
                <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                  <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z" />
                </svg>
              </button>
            </div>
          </div>
        </div>
      {{/each}}

    </div>
  </div>
</template>