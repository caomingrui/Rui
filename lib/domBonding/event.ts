

export function initializeEvent(
    container: Element, name: string,
    cb: EventListener | ((...args: any[]) => void)
) {
    if (!cb) return;
    container.addEventListener(name, cb);
}