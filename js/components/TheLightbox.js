export default {
    name: 'TheLightboxComponent',

    props: ['item'],

    emits: ['closelightbox'],

    template: `
    <section class="lightbox">
    <section class="lightbox-container">

        <img @click="closeLB" ref="bgImg" src="images/closeIcon.jpg" class="lightbox_close">
        <!-- hero image on the left, text on the right -->
        <!-- her image is a background image -->
        <section>
            <h3 class="lb_heading">{{item.min_name}}</h3>
            <img class="lb_pic" :src='"images/" + item.min_pic'>
            <h2>Price:  {{item.min_price}}</h2>
            
        </section>
        <div class="one-item">
            <div>
                <h2> Engine: 
                 {{item.min_engine}}
                </h2>
            </div>
        </div>
            <div class="one-item">
                <div>
                    <h2>Output: {{item.min_output}}</h2>
                </div>
                <div>
                    <h2>Output: {{item.min_boreandstroke}}</h2>
                </div>
                <div>
                    <h2>Max torque: {{item.min_maxtorque}}</h2>
                </div>
                <div>
                    <h2>Output: {{item.min_output}}</h2>
                </div>
                <div>
                    <h2>Displacement:
                    {{item.min_displacement}}</h2>
                </div>
                <div>
                    <h2>Power:
                    {{item.min_power}}</h2>
                </div>
                <div>
                    <h2>Top Speed: {{item.min_topspeed}}</h2>
                </div>
                <div class="butBuy">
                <a href="404error.html">Buy Online</a>
                </div>
            </div>
        </section>
    </section>
    
    </section>
    
    `,

    methods: {
        closeLB() {
            //debugger;
            this.$emit('closelb');
        }
    }
}