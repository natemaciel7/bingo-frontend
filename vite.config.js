import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

export default defineConfig({
  plugins: [react()],
  define: {
    // eslint-disable-next-line no-undef
    "import.meta.env.VITE_BACKEND": JSON.stringify(process.env.VITE_BACKEND),
  },
});
