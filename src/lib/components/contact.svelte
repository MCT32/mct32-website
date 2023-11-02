<script>
    /** @type {string} */
    export let name;
    /** @type {string} */
    export let icon;
    /** @type {string} */
    export let alt;
    /** @type {string} */
    export let user;
    /** @type {string} */
    export let href;
</script>

<li>
    <img class="inline h-5" src={icon} {alt}>
    <b>{name}</b>
    <a class="underline pl-3" {href}>{user}</a>
</li>