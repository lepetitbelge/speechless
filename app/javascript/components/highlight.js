const speech = document.querySelector('.speech-text');

const generateRandomToken = () => {
  return Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15);
};

const removeTooltips = () => {
  const toolTips = document.querySelectorAll('.highlightMenu');
  toolTips.forEach(toolTip => toolTip.remove());
};

const removeOnScroll = (div) => {
  const selection = window.getSelection();
  window.addEventListener("scroll", function _func () {
    div.remove();
    selection.removeAllRanges();
    window.removeEventListener("scroll", _func);
  });
};

const popOver = () => {
  return (
    `<div class="highlightMenu-inner">
      <div class="highlight-tools" >
      <a href="" id="modal-button" data-toggle="modal" data-target="#modalContactForm">
        <i class="fas fa-comment-alt" id="contribution-tag"></i>
      </a>
      </div>
    </div>
    <div class="highlightMenu-arrowClip">
      <span class="highlightMenu-arrow"></span>
    </div>`
  );
};

const createTooltip = (range) => {
  const rectList = range.getClientRects();

  const div = document.createElement('div');
  div.innerHTML = popOver();
  div.classList.add('highlightMenu');
  div.style.position = 'fixed';
  div.style.top = (rectList[0].top - 54) + 'px';
  div.style.left = ((rectList[0].left - 20) + (rectList[0].width / 2)) + 'px';
  document.body.appendChild(div);

  removeOnScroll(div);
};

const displayForm = () => {
  const modal = document.querySelector('#modal-button');
  const title = document.querySelector('.form-control-label');
  title.innerHTML = 'Your contribution';
  const textInput = document.querySelector('.modal textarea');
};

const highlightSelection = (range, start, end) => {
  const token = generateRandomToken();
  const span = document.createElement('span');
  span.classList.add('highlightedSelection');
  span.dataset.uui = token;

  if (start.isEqualNode(end)) {
    range.surroundContents(span);
  } else {
    range.setEndAfter(start);
    range.surroundContents(span);
  }
  setHighlightPosition(range, token);
  removeTooltips();
};

const bindTooltipEvents = (range, start, end) => {
  // const highlight = document.querySelector('.fa-highlighter');
  const comment = document.querySelector('#modal-button');
  comment.addEventListener('click', () => {
    displayForm();
    highlightSelection(range, start, end);
    }
  );
  // highlight.addEventListener('click', () => highlightSelection(range, start, end));
};

const setHighlightPosition = (range, token) => {
  const paragraphIndex = range.startContainer.dataset.index;
  const paragraphInput = document.getElementById('contribution_paragraph');
  paragraphInput.value = paragraphIndex;

  const uuiInput = document.getElementById('contribution_selection_uui');
  uuiInput.value = token;

  const speechHtmlInput = document.getElementById('speech_html');
  speechHtmlInput.value = speech.innerHTML;
};

const logSelection = (event) => {
  removeTooltips();
  const selection = window.getSelection();
  const start = selection.getRangeAt(0).startContainer.parentNode;
  const end = selection.getRangeAt(0).endContainer.parentNode;
  const range = selection.getRangeAt(0);

  if (range.collapsed) return
  createTooltip(range);
  bindTooltipEvents(range, start, end);
};

const initHighlighter = function() {

  if (speech) {
    speech.addEventListener('mouseup', logSelection);
  }
};

export { initHighlighter };
