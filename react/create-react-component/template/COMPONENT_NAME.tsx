import { ReactElement } from 'react';
import { Container } from './styledComponents';

interface IProps {}
export const COMPONENT_NAME = (props: IProps): ReactElement => {
    return (
        <Container>
            <div>COMPONENT_NAME!</div>
        </Container>
    );
};

COMPONENT_NAME.displayName = 'COMPONENT_NAME';

COMPONENT_NAME.defaultProps = {};
