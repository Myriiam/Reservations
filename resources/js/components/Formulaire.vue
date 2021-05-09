<template>
    <div style="height:100px;">
        <form class="mb-10 ml-12" method="GET" id="frm" action=#>
            <input id="searches" type="radio" name="searches" value="réservables">
            <input type="submit" value="réservables">
        </form>
    </div>
</template>

<script>
export default {
    data() {
        return {

            variable: 0,
        }
    },
    methods: {
        filter(){
            this.variable = 1
        },
    }
}
</script>