import Year from "./Yaer";

export default class Musician {
    private _id: number;
    private _jName: string;
    private _eName: string;
    private _year: Year;

    constructor(id: number, jName: string, eName: string, year: Year) {
        this._id = id;
        this._jName = jName;
        this._eName = eName;
        this._year = year;
    }

    public id(): number {
        return this._id;
    }

    public jName(): string {
        return this._jName
    }

    public eName(): string {
        return this._eName
    }

    public to(): string {
        return String(this._year.to)
    }

    public from(): string {
        return String(this._year.from)
    }
}