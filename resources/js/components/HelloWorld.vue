<template>
    <h1>{{ welcome }}</h1>
</template>
<script>
export default {
    data: () => ({
        welcome: 'Le théâtre est né de l\'Histoire !',
        welcomes: [
            'Le théâtre et la vie peuvent parfois ne faire qu\'un',
            'Nous voulons de la vie au théâtre, et du théâtre dans la vie',
            'Le théâtre doit être ce que le théâtre n\'est pas',
            'La vie est un théâtre et il n\'y a qu\'une seule représentation',
            'Le théâtre, c\'est l\'insécable qui vient dans le fragmenté',
            'Le théâtre est né de l\'Histoire !',
            ],
        counter: 0,
    }),
    mounted() {
        setInterval(() => {
            this.welcome = this.welcomes[this.counter++]
            if(this.counter === this.welcomes.length){
                this.counter = 0
            }
        }, 5000)
    }
}
</script>