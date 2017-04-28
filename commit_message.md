As mensagens dos commits devem servir para três importantes
coisas:

* Para acelerar o processo de revisão.
* Para ajudar a escrever uma boa nota de lançamento.
* Para ajudar os futuros mantenedores (que pode ser você), ou
  ajudar a descobrir porque uma mudança foi feita no código ou
  porque uma funcionalidade foi adicionada.

## __Escreva sua mensagem de commit desta forma:__

[Só use TAG em casos específicos] Resuma claramente o commit em
uma linha e em até 72 caracteres

Descreva o problema que o commit resolve ou o caso de uso que
levou a nova funcionalidade. Justifique porque você escolheu
essa solução.  Não descreva o código. Descreva o propósito e a
abordagem utilizada.

## __TAGS PERMITIDAS__

* [tag] : Criação de uma tag
* [-tag] : Remoção de uma tag
* [branch] : Criação de um branch
* [-branch] : Remoção de um branch
* [merge] : Junção de códigos, ponto crítico

## __FAÇA__

* Escreva a linha de resumo e a descrição de modo imperativo,
  como se estivesse comandando alguém. Escreva: "adiciona",
  "remove", "atualiza" ao invés de "adicionado", "removido",
  "atualizado".

* O resumo deve ser apenas uma frase e deve começar com uma
  letra maiúscula.

* Sempre deixe em branco a segunda linha.

* Quebre as linhas da descrição do commit para que não fiquem
  muito extensas. (Para tornar a mensagem legível sem ter que
  rolar horizontalmente).

## __NÃO FAÇA__

* Não termine a linha de resumo com pontuação e não exceda 72
  caracteres.

## __DICAS__

* Se parece difícil resumir o que o seu commit faz, o motivo
  talvez seja diversas alterações lógicas ou correções de erros.
  Nesse caso, deve ser dividido em vários commits.

[modeline]: # ( vim: set tw=64 ts=4 foldlevel=1:  )