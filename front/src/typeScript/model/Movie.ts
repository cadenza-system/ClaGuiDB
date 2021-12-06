export default class Movie {
    private _id: number;
    private _url: string;

    constructor(id: number, url: string) {
        this._id = id;
        this._url = url;
    }

    public id(): number {
        return this._id;
    }

    public url(): string {
        return this._url;
    }
}