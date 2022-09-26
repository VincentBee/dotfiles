interface Props {
  foo: string;
}

export const firstFunction = (a: string, b: { foo: string }) => {
  console.log('plop', b, a);
}

const toto = () => {
  return 0;
}

export function secondFunction(a: number, p: Props) {
  return p.foo + a.toString();
}

function plop() {
  return 'abc';
}

