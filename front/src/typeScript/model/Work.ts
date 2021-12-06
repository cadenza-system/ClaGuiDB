import WorkSub from "./WorkSub";

export default class Work {
    private _id: number;
    private _jTitle: string;
    private _eTitle: string;
    private _oups: string;
    private _workSubList: WorkSub[] = [];

    constructor(id: number, jTitle: string, eTitle: string, oups: string) {
        this._id = id;
        this._jTitle = jTitle;
        this._eTitle = eTitle;
        this._oups = oups;
    }

    public id(): number {
        return this._id;
    }

    public jTitle(): string {
        return this._jTitle;
    }

    public eTitle(): string {
        return this._eTitle;
    }

    public oups(): string {
        return this._oups;
    }

    public pushWorkSub(workSub: WorkSub): void {
        this._workSubList.push(workSub)
    }

    public getWorkSub(index: number): WorkSub {
        return this._workSubList[index];
    }
}