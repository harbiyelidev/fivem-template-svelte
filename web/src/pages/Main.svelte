<script lang="ts">
    import { onMount } from 'svelte';
    import { message } from '../stores';
    import { send, on } from '../lib/nui';
    import Button from '../components/Button.svelte';

    function handleClick() {
        send('onClick', { clicked: true }).then((res) => {
            console.log('Lua yanıtı:', res);
        });
    }

    on('openMenu', (data) => {
        const mainDiv = document.getElementById('main-div');

        if (mainDiv) {
            mainDiv.style.display = 'block';
            message.set(data.message || 'Merhaba Svelte!');
        }
    });

    onMount(() => {
        window.addEventListener("keydown", (event) => {
            if (event.key === "Escape") {
                send('closeMenu', {});

                const mainDiv = document.getElementById('main-div');
                if (mainDiv) {
                    mainDiv.style.display = 'none';
                };
            }
        });
    });
</script>

<div id="main-div" class="bg-[#222] w-max h-max !p-2 flex flex-col items-center gap-y-1" style="display: none;">
  <h1 class="text-2xl font-bold text-center">{$message}</h1>
  <Button onClick={handleClick}>Lua'ya Gönder</Button>
</div>