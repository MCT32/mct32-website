<script>
    import ParallaxImage from "$lib/components/parallaxImage.svelte";
    import Grid from "$lib/components/grid.svelte";
    import GridItem from "$lib/components/gridItem.svelte";

    const projects = [
        {
            title: "VelocityEngine",
            description: "Shitty, unfinished Wolfenstein clone",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.6mvzo-QSSaASiqJG2PnlGAHaEo%26pid%3DApi&f=1&ipt=a863ca19e68cff54bf67889dd01dd10815458fe118d14a70dcfdb7c3d9017323&ipo=images",
            alt: "Wolfenstein screenshot",
            href: "https://github.com/MCT32/VelocityEngine",
        },
        {
            title: "DOOM Melting Transition",
            description: "Recreationn of the DOOM level transition in Python. Exports to GIF.",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.JhqeWkbt9YhsDCtk_tkiRQHaEo%26pid%3DApi&f=1&ipt=5df1fe31c995218e9d51c8a063986d03c97c6b71672a40f0f30d66592791aa8d&ipo=images",
            alt: "Doom art",
            href: "https://github.com/MCT32/Doom-Melting-Transition",
        },
        {
            title: "Discord Soundboard",
            description: "VC soundboard bot that can be controlled from outside the VC. Made before soundboards were officially added to Discord.",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Flogos-world.net%2Fwp-content%2Fuploads%2F2020%2F12%2FDiscord-Logo.png&f=1&nofb=1&ipt=d61746e744d6222360ed8ed7661396042ce6eefdaacc44140962d22d9dc3ca42&ipo=images",
            alt: "Discord screenshot",
            href: "https://github.com/MCT32/discord-soundboard",
        },
        {
            title: "Zombie Shooter",
            description: "2D zombie shooter survival game.",
            src: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.yHHLoIu8WGhvUVvgUwMYDwHaHa%26pid%3DApi&f=1&ipt=0ce2b0e46930b659078f7083e24cd2bacc29b35afa47ac859f389103ffe4cef2&ipo=images",
            alt: "Zombie head",
            href: "https://github.com/MCT32/ZombieShooter",
        },
    ]
</script>

<ParallaxImage src="background.png">
    <div class="px-20 py-40 drop-shadow-lg">
        <h1 class="text-white font-semibold text-9xl">
            Hi,
            <br>
            I'm <b>MCT32</b>
        </h1>
        <p class="text-white text-xl">
            I'm a hobby developer that never finishes my projects. ;)
        </p>
    </div>
</ParallaxImage>

<Grid>
    {#each projects as {title, description, src, alt, href}}
        <GridItem {description} {title} {src} {alt} {href} />
    {/each}

    If it wasnt obvious enough already, these images are temporary :)
</Grid>