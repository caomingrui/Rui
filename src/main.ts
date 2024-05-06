import './style.css'
import {
    Component,
    useWatch,
    merge,
    reaction,
    createRoot
} from '../lib';
import { isFunction, isNumber } from '../lib/utils';

function useSetCount() {
    const data = reaction({
        count: 5
    });

    const setCount = function(cb: Function | number) {
        if (isFunction(cb)) {
            //  @ts-ignore
            data.count = cb(data.count);
        } else if (isNumber(cb)) {
            data.count = cb;
        }
    }

    return [data, setCount]
}


const Child2 = Component((instance) => {
    const {
        useUnmounted
    } = instance.init(reaction({
        msg: '???????????'
    }))

    useUnmounted(() => {
        console.log('child2 卸载')
    })
    return `<div>{ msg }</div>`
})


const Child = Component((instance, props) => {
    const {cb, ...args} = props;
    const state = reaction({
        counnt: 0,
        ...args
    });
    const [countState, setCount] = useSetCount();
    const {
        data,
        methods,
        useMounted,
        useUpdated,
        useUnmounted
    } = instance.init(() => ({
        data: merge(state, countState),
        components: { Child2 }
    }))

    useMounted(() => {
        console.log('Child -- render =====================>>', props);
    });

    useUpdated(() => {
        console.log('child 组件更新了');
    });

    useUnmounted(() => {
        console.log('Child 我销毁了')
    })

    methods.handleTest = function() {
        data.counnt += 1;
    }
    methods.setCount = () => setCount((d: number) => d + 1);
    methods.cb = () => {
        console.log(props)
        props.cb(props.data + 'hahah');
    };
    return (`
        <div>
            <p>num: {counnt} --- {count}</p>
            <button @click="handleTest">Child num ++</button>
            <button @click="setCount">Child num ++</button>
            <Child2></Child2>
            <button @click="cb">子传父 cb</button>
            <p>999{ data }8888</p>
        </div>
    `)
})


const Child_2 = Component((instance, props) => {

    const {
        useBefored
    } = instance.init(reaction({
        ...props
    }))

    useBefored(() => {
        console.log('useBefored,', props)
    })

    return `
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
        <div>child: props -- ({ label }) --</div>
    `;
})

// 示例
const Example = Component((instance, props) => {
  const data = reaction({
      name: '彩虹哔哔哔',
      dels: {a: { b: 2}},
      bool: false,
      list: [],

  });
  const {
      methods,
      useMounted
  } = instance.init(() => ({
    data,
    components: { Child, Child_2 }
  }));

  useMounted(() => {
      console.log('Example -- onMount ================>>', props);
  });

  useWatch(() => data.number, (newV, oldV) => {
    console.log(newV, oldV);
  });

  methods.handleKeyup = function (event) {
      if (event.key === 'Enter') {
          data.list = data.list.concat({ label: event.target.value, id: data.list + 1 });
          console.log(data.list)
      }
  }

  methods.handleDEL = function (item) {
      console.log(item);
      data.list = data.list.filter(l => l.id != item.id);
  }

  methods.cbb = function(aa: string) {
    console.log(aa);
  }

  return (`<div>                             
            <div>
                <input @keyup="handleKeyup"></input>
                <Child_2 :label="1"></Child_2>
                <Child_2 :label="2"></Child_2>
                <Child_2 :label="3"></Child_2>
                <Child_2 :label="4"></Child_2>
                <Child_2 :label="5"></Child_2>
                <Child_2 :label="1"></Child_2>
                <Child_2 :label="2"></Child_2>
                <Child_2 :label="3"></Child_2>
                <Child_2 :label="4"></Child_2>
                <Child_2 :label="5"></Child_2>
                <Child_2 :label="1"></Child_2>
                <Child_2 :label="2"></Child_2>
                <Child_2 :label="3"></Child_2>
                <Child_2 :label="4"></Child_2>
                <Child_2 :label="5"></Child_2>
                <Child_2 :label="1"></Child_2>
                <Child_2 :label="2"></Child_2>
                <Child_2 :label="3"></Child_2>
                <Child_2 :label="4"></Child_2>
                <Child_2 :label="5"></Child_2>
                <Child_2 :label="1"></Child_2>
                <Child_2 :label="2"></Child_2>
                <Child_2 :label="3"></Child_2>
                <Child_2 :label="4"></Child_2>
                <Child_2 :label="5"></Child_2>
            </div>
            <div v-for="item in list">
                 <div>
                    <p>------- { item.label } ---------</p>
                    <Child_2 :label="item.label"></Child_2>
                    <button @click="handleDEL.bind(null, item)">del</button>         
                </div>     
            </div>
            <span>END</span>
        </div>`)
});



// <div v-for="item in list">
//                     <div :key="item.id">
//                         { item.data } -- {item.a} - {item.c.b.c.d} - {number} --- {bool}
//                         <p>{bool}-123--{number} - { item.id }</p>
//                         <button :class="spanClass" @click="testBind.bind(null, item.id, item.a)">获取列表item</button>
//                         <Child></Child>
//                         <p>{ bool }</p>
//                     </div>
//                 </div>

// <div v-for="item in list">
//                     <div :key="item.id">
//                         { item.data } -- {item.a} - {item.c.b.c.d} - {number} --- {bool}
//                         <p>{bool}-123--{number} - { item.id }</p>
//                         <button :class="spanClass" @click="testBind.bind(null, item.id, item.a)">获取列表item</button>
//                         <Child></Child>
//                         <p>{ bool }</p>
//                     </div>
//                 </div>

// <button class="mt-but error mr_10" @click="handleSum">累加
//                     (<span>{computeTest}--劳资蜀道-{number}</span>)
//                 </button>
//                 <p>{ name }--{dels.a.b}</p>
//                 <span :class="spanClass">test - { bool }</span>

// <p>{ name }--{dels.a.b}</p>
//                 <span :class="spanClass">test - { bool }</span>
//                 <p v-if="bool">我是bool-v-if</p>
//                 <p v-show="bool">我是bool-v-show</p>
//                 <div v-for="item in list">
//                     <div :key="item.id">
//                         { item.data } -- {item.a} - {item.c.b.c.d} - {number} --- {bool}
//                         <p>{bool}-123--{number} - { item.id }</p>
//                         <button :class="spanClass" @click="testBind.bind(null, item.id, item.a)">获取列表item</button>
//                         <Child></Child>
//                         <p>{ bool }</p>
//                     </div>
//                 </div>
//                 <Child></Child>

const APP = document.getElementById('app');
const root = createRoot(APP);
root.render(Example.bind(null, { data: '???' }));
