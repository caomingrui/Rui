import './style.css'
import { 
  Component,
  reaction
} from '../lib/index';

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
      onMount
  } = instance.init(data);

  onMount(() => {
      console.log('onMount ================>>', props);
      (window as any).da = data;
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
      // da.list = cloneList.slice(2,3)
      data.list = [cloneList[3], cloneList[2], cloneList[0], cloneList[1]]
      // da.list = cloneList.concat({ id: 9, data: 999 })
      // data.list = cloneList.slice(0, 2)
      //     .concat({ id: 9, data: '9999999999999999999' })
      //     .concat(cloneList.slice(2));
  }

  return (`
                  <div>
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
                              <p :class="spanClass">我是update class</p>
                          </div>
                      </div>
                      <p @click="test">123</p>
                  </div>`)
});
Example({ data: '???' });
