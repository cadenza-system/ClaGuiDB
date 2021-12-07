import MovieInfoDto from "../dto/MovieInfoDto";
import Movie from "../model/Movie";
import Musician from "../model/Musician";
import Work from "../model/Work";
import WorkSub from "../model/WorkSub";
import Year from "../model/Yaer";

export default class MovieListDao {
    public static async fetchMovies(): Promise<MovieInfoDto[]> {
        const dtoList: MovieInfoDto[] = []

        // fetch
        const res = await fetch('http://localhost:3000/api/v1/movie/');
        const json = await res.json();
        const dataList = json.data;

        for (const data of dataList) {
            // parse Movie
            const movieJson = data.movie;
            const movie = new Movie(movieJson.ID, movieJson.URL);

            // parse Work
            const workJson = data.work;
            const work = new Work(workJson.ID, workJson.J_TITLE, workJson.E_TITLE, workJson.OUPS)

            // parse WorkSub
            const workSubJson = data.workSub;
            if (workSubJson) {
                const workSub = new WorkSub(workSubJson.J_TITLE, workSubJson.E_TITLE);
                work.pushWorkSub(workSub);
            }

            // parse Musician
            const composerJson = data.composer;
            const composer = new Musician(composerJson.ID, composerJson.J_NAME, composerJson.E_NAME, new Year(composerJson.FROM_YEAR,composerJson.TO_YEAR))

            dtoList.push(new MovieInfoDto(movie, work, composer));
        }

        return dtoList;
    }
}