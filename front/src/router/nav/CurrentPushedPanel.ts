export default class CurrentPushedPanel {
    private static isHomePushed: boolean;
    private static isRankingPushed: boolean;
    private static isSearchPushed: boolean;
    private static isFavoritePushed: boolean;

    public static isHome(): boolean {
        return CurrentPushedPanel.isHomePushed;
    }

    public static isRanking(): boolean {
        return CurrentPushedPanel.isRankingPushed;
    }

    public static isSearch(): boolean {
        return CurrentPushedPanel.isSearchPushed;
    }

    public static isFavorite(): boolean {
        return CurrentPushedPanel.isFavoritePushed;
    }

    public static pushHome(): void {
        CurrentPushedPanel.isHomePushed = true;
        CurrentPushedPanel.isRankingPushed = false;
        CurrentPushedPanel.isSearchPushed = false;
        CurrentPushedPanel.isFavoritePushed = false;
    }

    public static pushRanking(): void {
        CurrentPushedPanel.isHomePushed = false;
        CurrentPushedPanel.isRankingPushed = true;
        CurrentPushedPanel.isSearchPushed = false;
        CurrentPushedPanel.isFavoritePushed = false;
    }

    public static pushSearch(): void {
        CurrentPushedPanel.isHomePushed = false;
        CurrentPushedPanel.isRankingPushed = false;
        CurrentPushedPanel.isSearchPushed = true;
        CurrentPushedPanel.isFavoritePushed = false;
    }

    public static pushFavorite(): void {
        CurrentPushedPanel.isHomePushed = false;
        CurrentPushedPanel.isRankingPushed = false;
        CurrentPushedPanel.isSearchPushed = false;
        CurrentPushedPanel.isFavoritePushed = true;
    }
}