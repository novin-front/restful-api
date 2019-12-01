exports.enNumberConvertToFa = (phonnumber) => {
    let mobilearray = phonnumber.split(''); // empty string separator

    let number_P_E = {
        0: '۰',
        1: '۱',
        2: '۲',
        3: '۳',
        4: '۴',
        5: '۵',
        6: '۶',
        7: '۷',
        8: '۸',
        9: '۹'
    };
    return String(phonnumber).split('').map(number => number_P_E[number] ? number_P_E[number] : number).join('');
}