export default class WorkSub {
    private _jTitle: string;
    private _eTitle: string;

    constructor(jTitle: string, eTitle: string) {
        this._jTitle = jTitle;
        this._eTitle = eTitle;
    }

    public jTitle(): string {
        return this._jTitle;
    }

    public eTitle(): string {
        return this._eTitle;
    }
}