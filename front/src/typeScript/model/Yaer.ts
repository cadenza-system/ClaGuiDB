export default class Year {
    private _from: number;
    private _to: number;

    constructor(from: number, to: number, ) {
        this._from = from;
        this._to = to;
    }

    public from(): number {
        return this._from;
    }

    public to(): number {
        return this._to;
    }
}