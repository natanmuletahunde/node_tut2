const EventEmitter = require('events');

const eventemitter = new EventEmitter();

eventemitter.on('greet', (name)=>{
   console.log( `Hello ${name}`); });

   eventemitter.emit('greet', 'John');
    eventemitter.emit('greet', 'Jane');  