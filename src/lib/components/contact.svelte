<script>
    export let name;
    export let icon;
    export let alt;
    export let user;
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