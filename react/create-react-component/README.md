# create-react-component

Util script to create a boiler plated React components.
This script will ask few questions to configure the files in the boilerplate before creating them.

## Installation

Install the package `globally` on your machine.

Using _npm_

```bash
git clone git@gitlab.syd.aws.enboarder.net:application/common-modules/frontend/utils/create-react-component.git
cd  create-react-component
npm i -g
```

## Usage

run

```bash
crc
```

or

```bash
create-react-component
```

and answer the questions.

## What's in the box

The package provides predefined settings and boilerplated files to all generated components. The files include:

- `MyComponent.tsx` : propTypes, defaultProps, displayName

- `styledComponents.ts` : Container component importing the theme
