#!/usr/bin/env node

const { spawn } = require('child_process');

const run = async () => {
    const path = '/scripts/main.sh';
    const shell = 'bash';
    const options = {
        cwd: process.cwd(),
        detached: false,
        stdio: 'inherit',
    };
    spawn(shell, [__dirname + path], options);
};

run();
