<script>
    /** @type {string} */
    export let title;
    /** @type {string} */
    export let description;
    /** @type {string} */
    export let href;
</script>

<a class="border-gray-500 border rounded-lg p-3" href={href}>
    <h3 class="font-semibold text-lg">{title}</h3>
    <p>{description}</p>
</a>