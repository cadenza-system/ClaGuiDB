export default class CurremtPath {
    private static pathName = "/search/work"
    public static setCurrentPath(path: string): void {
        if (path === "/search") {
            return;
        }

        CurremtPath.pathName = path;
    }

    public static path(): string {
        return CurremtPath.pathName;
    }
}