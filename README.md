# Appfly docs

Documentation for [Appfly](https://fly.appfly.dev), published at https://docs.appfly.dev.

Built with [Nimbus Docs](https://nimbus-docs.com) on Astro, Tailwind v4, and Pagefind search. Pages are MDX files in `src/content/docs/`.

## Develop

Requires Node.js 22 and pnpm 11.

```sh
pnpm install
pnpm dev          # http://localhost:4321
pnpm build        # static site in dist/
pnpm lint:docs    # check frontmatter and internal links
```

`make help` lists the same commands.

## Deploy

Pushes to `main` run CI (`pnpm build`) and deploy `dist/` to GitHub Pages. The custom domain is set in `public/CNAME`.

See `AGENT.md` for how to add pages and components.
