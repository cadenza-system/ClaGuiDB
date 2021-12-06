import Movie from "../model/Movie";
import Musician from "../model/Musician";
import Work from "../model/Work";

export default class MovieListDto {
    private _movie: Movie;
    private _work: Work;
    private _comporser: Musician;

    constructor(movie: Movie, work: Work, composer: Musician) {
        this._movie = movie;
        this._work = work;
        this._comporser = composer;
    }

    public movie(): Movie {
        return this._movie;
    }

    public work(): Work {
        return this._work;
    }

    public composer(): Musician {
        return this._comporser;
    }
}