import type { ReactiveEffectType } from '../types/proxyBonding'

const jobs = new Set<ReactiveEffectType>();
export const promise = Promise.resolve();


export default function scheduler(effect: ReactiveEffectType, key: string) {
    effect.addUpdateDeps(key);
    if (jobs.has(effect)) {
        return
    }

    promise.then(() => {
        effect.run();
        jobs.delete(effect);
    })
    jobs.add(effect);
}