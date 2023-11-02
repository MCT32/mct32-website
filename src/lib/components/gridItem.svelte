<script>
    /** @type {string} */
    export let title;
    /** @type {string} */
    export let description;
    /** @type {string} */
    export let src;
    /** @type {string} */
    export let alt;
    /** @type {string} */
    export let href;
</script>

<a class="border-gray-500 border rounded-lg p-3 inline-flex" href={href}>
    <img class="aspect-square w-60 rounded" {src} {alt}>
    <div class="pl-5">
        <h3 class="font-semibold text-lg">{title}</h3>
        <p>{description}</p>
    </div>
</a>