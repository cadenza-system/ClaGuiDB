export default class CurrentPushedPanel {
    private static isWorkPushed: boolean;
    private static isComporserPushed: boolean;
    private static isPlayerPushed: boolean;
    private static isCDPushed: boolean;

    public static isWork(): boolean {
        return CurrentPushedPanel.isWorkPushed;
    }

    public static isComporser(): boolean {
        return CurrentPushedPanel.isComporserPushed;
    }

    public static isPlayer(): boolean {
        return CurrentPushedPanel.isPlayerPushed;
    }

    public static isCD(): boolean {
        return CurrentPushedPanel.isCDPushed;
    }

    public static pushWork(): void {
        CurrentPushedPanel.isWorkPushed = true;
        CurrentPushedPanel.isComporserPushed = false;
        CurrentPushedPanel.isPlayerPushed = false;
        CurrentPushedPanel.isCDPushed = false;
    }

    public static pushComporser(): void {
        CurrentPushedPanel.isWorkPushed = false;
        CurrentPushedPanel.isComporserPushed = true;
        CurrentPushedPanel.isPlayerPushed = false;
        CurrentPushedPanel.isCDPushed = false;
    }

    public static pushPlayer(): void {
        CurrentPushedPanel.isWorkPushed = false;
        CurrentPushedPanel.isComporserPushed = false;
        CurrentPushedPanel.isPlayerPushed = true;
        CurrentPushedPanel.isCDPushed = false;
    }

    public static pushCD(): void {
        CurrentPushedPanel.isWorkPushed = false;
        CurrentPushedPanel.isComporserPushed = false;
        CurrentPushedPanel.isPlayerPushed = false;
        CurrentPushedPanel.isCDPushed = true;
    }
}