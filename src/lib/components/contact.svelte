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

<tr>
    <td>
        <img class="inline w-5" src={icon} {alt}>
        <b>{name}</b>
    </td>
    <td class="text-right">
        <a class="underline pl-3" {href}>{user}</a>
    </td>
</tr>