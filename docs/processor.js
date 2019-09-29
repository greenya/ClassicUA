function getQuestPart(text) {
    let result = text ? text.trim() : '';

    [
        [ '   ', ' ' ],
        [ '  ', ' ' ],
        [ '{c', '{с' ], // cyrilic 'c' to latin 'c'
        [ ' ...', '...' ],
        [ '…', '...' ],
        [ '—', '-' ],
        [ ' !', '!' ],
        [ ' ?', '?' ],
        [ ' .', '.' ],
        [ ',{', ', {' ],
        [ '’', '\'' ],
        [ '“', '"' ],
        [ '”', '"' ],
    ].forEach(([ t1, t2 ]) => {
        result = result.replace(t1, t2);
    });

    return result
        .split('\n')
        .map(e => e.trim())
        .filter(e => e)
        .join('\n\n');
}

function getQuestCode(quest) {
    return `[${quest.id}] = {\n`
        + [
            [ 'title', getQuestPart(quest.title) ],
            [ 'description', getQuestPart(quest.description) ],
            [ 'objective', getQuestPart(quest.objective) ],
            [ 'progress', getQuestPart(quest.progress) ],
            [ 'reward', getQuestPart(quest.reward) ],
        ].map(([ part, text ]) => {
            const value = text ? `[===[${text}]===]` : 'nil'
            return `--[[${part}]] ${value},\n`;
        }).join('')
        + '},';
}

const questCodeRegExp = /^\[([\d]*)\][\s\S]*?--\[\[title\]\]\s(?:nil|\[===\[([\s\S]*?)\]===\]),[\s\S]*?--\[\[description\]\]\s(?:nil|\[===\[([\s\S]*?)\]===\]),[\s\S]*?--\[\[objective\]\]\s(?:nil|\[===\[([\s\S]*?)\]===\]),[\s\S]*?--\[\[progress\]\]\s(?:nil|\[===\[([\s\S]*?)\]===\]),[\s\S]*?--\[\[reward\]\]\s(?:nil|\[===\[([\s\S]*?)\]===\]),/gm;

function parseQuestCode(code) {
    const result = new RegExp(questCodeRegExp).exec(code);
    if (result) {
        return {
            id: result[1],
            title: result[2],
            description: result[3],
            objective: result[4],
            progress: result[5],
            reward: result[6],
        };
    } else {
        return false;
    }
}

window.Processor = {
    getQuestCode,
    parseQuestCode,
};
