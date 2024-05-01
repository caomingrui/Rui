import './style.css'
import { 
  Component,
  merge,
  reaction
} from '../lib/index';
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
    const state = reaction({
        counnt: 0
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
        props.cb(props.data + 'hahah');
    };
    return (`
        <div>
            <p>num: {counnt} --- {count}</p>
            <button @click="handleTest>Child num ++</button>
            <button @click="setCount>Child num ++</button>
            <Child2></Child2>
            <button @click="cb">子传父 cb</button>
            
        </div>
    `)
})

// 示例
const Example = Component((instance, props) => {
  const data = reaction({
      name: '彩虹哔哔哔',
      dels: {a: { b: 2}},
      bool: false,
      list: Array.from({ length: 4 }, (_, i) => ({
          data: '123',
          a: 1,
          b: 2,
          c: {
              b: {
                  c: {
                      d: 123
                  }
              }
          },
          id: i + 1
      })),
      number:1
  });
  const {
      methods,
      useMounted
  } = instance.init(() => ({
    data,
    components: { Child }
  }));

  useMounted(() => {
      console.log('Example -- onMount ================>>', props);
  });

  methods.handleSum = () => {
      data.number += 1
  }

  methods.computeTest = function() {
      return Object.values(data.dels).length
  }

  methods.handleCancelDel = function () {
      let d = this.computeTest();
      console.log(d)
      data.name = 'cmr';
      data.bool = !data.bool;
  }
  methods.spanClass = function () {
      return data.bool ? 'error' : 'success'
  }
  methods.test = function () {
      let cloneList = [...data.list];
      data.list = [cloneList[3], cloneList[2], cloneList[0], cloneList[1]]
  }
  methods.testBind = function(...item: any) {
    console.log(item);
  }

  methods.cbb = function(aa: string) {
    console.log(aa);
  }

  return (`<div>                             
                
                <p v-if="bool">我是bool-v-if</p>
                
                
                <Child :data="name" :bool="bool" @cb="cbb"></Child>
                <Child v-show="bool"></Child>
                
                <button class="mt-but" @click="handleCancelDel">显示隐藏</button>
                <Child v-if-new="bool"></Child>
                <p>............{ bool }...............</p>
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
Example({ data: '???' });
