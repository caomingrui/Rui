import { defineConfig } from 'vite'
import path from 'path'

export default defineConfig({
  build: {
    lib: {
      entry: './lib/index.ts',
      name: 'Counter',
      fileName: 'counter'
    }
  },
  plugins: [],
  resolve: {
    alias: {
      '@': path.resolve(__dirname, './lib'),
    }
  }
})
