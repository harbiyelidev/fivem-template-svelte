declare function GetParentResourceName(): string;

type Callback<T = any> = (data: T) => void;

export async function send<T = any>(event: string, data: any = {}): Promise<T> {
    const res = await fetch(`https://${GetParentResourceName()}/${event}`, {
        method: 'POST',
        body: JSON.stringify(data),
    });
    return await res.json();
}

export function on<T = any>(event: string, cb: Callback<T>) {
    window.addEventListener('message', (e) => {
        if (e.data?.type === event) {
            cb(e.data.payload);
        }
    });
}
