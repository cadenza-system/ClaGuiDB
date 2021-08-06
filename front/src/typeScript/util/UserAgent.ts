import isMobile from 'ismobilejs';

export default class UserAgent {
    public static isPhone(): boolean {
        return isMobile(navigator.userAgent).phone;
    }

    public static isTablet():boolean {
        return isMobile(navigator.userAgent).tablet;
    }
}