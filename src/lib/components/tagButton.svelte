<script>
    import { createEventDispatcher } from "svelte";

    const dispatch = createEventDispatcher();

    /** @type {string} */
    export let group;
    /** @type {string} */
    export let tag;

    let isPressed = false;

    const toggleIsPressed = () => {
        isPressed = !isPressed;

        dispatch('tagEvent', { tag: tag, group: group, toggle: isPressed })
    };
</script>

<button aria-pressed={isPressed} on:click={toggleIsPressed} class="rounded-lg border border-gray-500 p-2 mx-0.5 first:ml-0 last:mr-0 {isPressed ? "bg-blue-500 text-white" : "text-black"}">
    {tag}
</button>