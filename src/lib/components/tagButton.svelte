<script>
    import { createEventDispatcher } from "svelte";

    const dispatch = createEventDispatcher();

    export let group;
    export let tag;

    let isPressed = false;

    const toggleIsPressed = () => {
        isPressed = !isPressed;

        dispatch('tagEvent', { tag: tag, group: group, toggle: isPressed })
    };
</script>

<button aria-pressed={isPressed} on:click={toggleIsPressed} class="first:rounded-l-lg last:rounded-r-lg border border-gray-500 p-2 {isPressed ? "bg-blue-500 text-white" : "text-black"}">
    {tag}
</button>