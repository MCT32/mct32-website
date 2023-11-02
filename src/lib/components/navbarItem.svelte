<script>
    import { page } from '$app/stores';

    /** @type {string} */
    export let path;
    /** @type {string} */
    export let name;
</script>

<li class="inline">
    <a href={path} class="px-2 {$page.url.pathname === path ? 'font-bold' : 'hover:text-gray-400 '}">
        {name}

        {#if !path.startsWith("/")}
            <img src="external-link-svgrepo-com.svg" class="h-5 inline" alt="External link icon">
        {/if}
    </a>
</li>