import { COMPONENT_NAME } from "./COMPONENT_NAME";
import { TestProvider } from "src/tests";

const { mountWithProviderAndTheme } = TestProvider();
describe("<COMPONENT_NAME/>", () => {
  it("should render", () => {
    const state = {
      common: {},
    };
    const root = mountWithProviderAndTheme(<COMPONENT_NAME />, state);
    expect(root).toMatchSnapshot();
  });
});
