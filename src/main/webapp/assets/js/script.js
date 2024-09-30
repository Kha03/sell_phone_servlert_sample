const $ = document.querySelector.bind(document); 
function load(selector, path) {
	const cached = localStorage.getItem(path);
	if (cached) {
		$(selector).innerHTML = cached;
	}

	fetch(path)
		.then((res) => res.text())
		.then((html) => {
			if (html !== cached) {
				$(selector).innerHTML = html;
				localStorage.setItem(path, html);
			}
		})
		.finally(() => {
			window.dispatchEvent(new Event("template-loaded"));
		});
}
const handleChangeSelection = () => {
	let selectedValue = document.getElementById('codeSupplier');
	let code = selectedValue.value;	
	const contextPath = selectedValue.getAttribute('data-context-path');
	const path = `${contextPath}/listPhone?maNCC=${code}`;
	window.location.href = path;
};

const handleSearch =()=>{
	let searchValue = document.getElementById('search_name').value;
	if (searchValue !== '') {
		const contextPath = document.getElementById('search_name').getAttribute('data-context-path');
		const path = `${contextPath}/listPhone?search=${searchValue}`;
		window.location.href = path;
	}
}

