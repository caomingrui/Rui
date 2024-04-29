import './style.css'
import { 
  Component,
  reaction
} from '../lib/index';

const Child = Component((instance) => {
    const {
        data,
        methods,
        useMounted
    } = instance.init(reaction({
        counnt: 0
    }))

    useMounted(() => {
        console.log('Child -- render =====================>>');
    })
    methods.handleTest = function() {
        data.counnt += 1;
    }
    return (`
        <div>
            <p>num: {counnt}</p>
            <button @click="handleTest>Child num ++</button>
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

  return (`<div>                             
                <button class="mt-but error mr_10" @click="handleSum">累加
                (<span>{computeTest}--劳资蜀道-{number}</span>)
                </button>
                <button class="mt-but" @click="handleCancelDel">显示隐藏</button>
                <p>{ name }--{dels.a.b}</p>
                <span :class="spanClass">test - { bool }</span>
                <p v-if="bool">我是bool-v-if</p>
                <p v-show="bool">我是bool-v-show</p>
                <div v-for="item in list">
                    <div :key="item.id">
                        { item.data } -- {item.a} - {item.c.b.c.d} - {number} --- {bool}
                        <p>{bool}-123--{number} - { item.id }</p>
                        <button :class="spanClass" @click="testBind.bind(null, item.id, item.a)">获取列表item</button>
                        <Child></Child>
                        <p>{ bool }</p>
                    </div>
                </div>
                
        </div>`)
});




// { item.data } -- {item.a} - {item.c.b.c.d} - {number} --- {bool}
//                               <p>{bool}-123--{number} - { item.id }</p>
//                               <p :class="spanClass" @click="testBind.bind(null, item.id, item.a)">我是update class</p>



//                               <p @click="test"><span>123</span></p>
//                       <Child></Child>
//                       <p>123123123</p>
Example({ data: '???' });
