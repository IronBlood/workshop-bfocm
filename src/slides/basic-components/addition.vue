<template>
	<section>
		<h3>How to add two numbers?</h3>
		<div class="flex justify-evenly text-right mono">
			<div>
				<div class="header">Base 10</div>
				<div class="carry fragment italic" data-fragment-index="1">1&nbsp;</div>
				<div>14</div>
				<div>+&nbsp;&nbsp;7</div>
				<div class="answer">
					<span class="fragment" data-fragment-index="2">2</span>
					<span class="fragment" data-fragment-index="1">1</span>
				</div>
			</div>

			<div class="fragment" data-fragment-index="3">
				<div class="header">Base 2</div>
				<div class="carry italic">
					<span class="fragment" data-fragment-index="7">1</span>
					<span class="fragment" data-fragment-index="6">1</span>
					<span class="fragment" data-fragment-index="5">1</span>
					<span class="fragment" data-fragment-index="4">0</span>
					<span>&nbsp;</span>
				</div>
				<div>1110</div>
				<div>+&nbsp;&nbsp;&nbsp;111</div>
				<div class="answer">
					<span class="fragment" data-fragment-index="8">1</span>
					<span class="fragment" data-fragment-index="7">0</span>
					<span class="fragment" data-fragment-index="6">1</span>
					<span class="fragment" data-fragment-index="5">0</span>
					<span class="fragment" data-fragment-index="4">1</span>
				</div>
			</div>
		</div>
		<div class="fragment mono mt-8" data-fragment-index="9">
			(<span class="fragment custom custom-highlight-red" data-fragment-index="10">1</span>0<span class="fragment custom custom-highlight-purple" data-fragment-index="11">1</span>0<span class="fragment custom custom-highlight-cyan" data-fragment-index="12">1</span>)<sub>2</sub> = <span class="fragment border-b-2 border-red-500" data-fragment-index="10">2<sup>4</sup></span> <span class="fragment fade-up" data-fragment-index="11">+ <span class="border-b-2 border-purple-500">2<sup>2</sup></span></span> <span class="fragment" data-fragment-index="12">+ <span class="border-b-2 border-cyan-500">2<sup>0</sup></span></span> <span class="fragment" data-fragment-index="13">= 16 + 4 + 1</span>
		</div>
	</section>
</template>

<style scoped>
.column-2 {
	display: flex;
	justify-content: space-evenly;
	text-align: right;
}

.column-2 > div {
	width: 25%;
}

.header {
	text-align: center;
}

.carry {
	color: red;
}

.answer {
	border-top: 1px solid;
}

.reveal-root-theme-black .answer {
	border-top-color: #fff;
}

.reveal-root-theme-white .answer {
	border-top-color: #000;
}

.fragment.custom-highlight-red.visible {
	border-bottom: 2px solid rgb(239 68 68);
}
.fragment.custom-highlight-purple.visible {
	border-bottom: 2px solid rgb(168 85 247);
}
.fragment.custom-highlight-cyan.visible {
	border-bottom: 2px solid rgb(6 182 212);
}
</style>

