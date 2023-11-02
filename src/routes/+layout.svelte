<script>
    import "../app.css";

    import Navbar from "$lib/components/navbar.svelte";
    import NavbarItem from "$lib/components/navbarItem.svelte";

    import Footer from "$lib/components/footer.svelte";
    import Contact from "$lib/components/contact.svelte";

    const links = [
        {
            name: "Home",
            path: "/",
        },
        {
            name: "About",
            path: "/about",
        },
        {
            name: "Bluemap",
            path: "https://bluemap.mct32.duckdns.org",
        },
    ];

    const contacts = [
        {
            name: "GitHub",
            icon: "github-mark.svg",
            alt: "Github icon",
            user: "MCT32",
            href: "https://github.com/MCT32",
        },
        {
            name: "Discord",
            icon: "discord-mark-black.svg",
            alt: "Discord icon",
            user: "mct32",
            href: "https://discordapp.com/users/456685402393411594",
        },
        {
            name: "YouTube",
            icon: "youtube_social_icon_dark.png",
            alt: "Youtube icon",
            user: "MCT32",
            href: "https://youtube.com/@mct3280?si=8eOGzJ7vs-CZRNyf",
        },
        {
            name: "Email",
            icon: "mail-svgrepo-com.svg",
            alt: "Email icon",
            user: "sethhenderson-general@proton.me",
            href: "mailto:sethhenderson-general@proton.me",
        },
    ];
</script>

<Navbar title="mct32.duckdns.org">
    {#each links as {name, path}}
        <NavbarItem {name} {path} />
    {/each}
</Navbar>

<slot />

<Footer>
    {#each contacts as {name, icon, alt, user, href}}
        <Contact {name} {icon} {alt} {user} {href} />
    {/each}
</Footer>