<template>
	<section data-auto-animate>
		<h3>1-bit Half Adder</h3>
		<table>
			<tr>
				<th>A</th>
				<th>B</th>
				<th class="fragment highlight-red" data-fragment-index="5">C</th>
				<th class="fragment highlight-blue" data-fragment-index="6">S</th>
			</tr>
			<tr class="fragment" data-fragment-index="1">
				<td>0</td>
				<td>0</td>
				<td>0</td>
				<td>0</td>
			</tr>
			<tr class="fragment" data-fragment-index="2">
				<td class="fragment highlight-blue" data-fragment-index="6">1</td>
				<td class="fragment highlight-blue" data-fragment-index="6">0</td>
				<td>0</td>
				<td class="fragment highlight-blue" data-fragment-index="6">1</td>
			</tr>
			<tr class="fragment" data-fragment-index="3">
				<td class="fragment highlight-blue" data-fragment-index="6">0</td>
				<td class="fragment highlight-blue" data-fragment-index="6">1</td>
				<td>0</td>
				<td class="fragment highlight-blue" data-fragment-index="6">1</td>
			</tr>
			<tr class="fragment" data-fragment-index="4">
				<td class="fragment highlight-red" data-fragment-index="5">1</td>
				<td class="fragment highlight-red" data-fragment-index="5">1</td>
				<td class="fragment highlight-red" data-fragment-index="5">1</td>
				<td>0</td>
			</tr>
		</table>
	</section>
	<section data-auto-animate :id="section_id">
		<h3>1-bit Half Adder</h3>
		<div class="w-full flex justify-center">
			<div ref="refDivSimulator" class="canvas-container"></div>
		</div>
		<div class="text-xl">Output on the top right is for carry, the other is for sum</div>
	</section>
</template>

<script setup lang="ts">
import {
	onMounted,
	onUnmounted,
	ref,
	Ref,
} from "vue";

import {
	register_resource,
	deregister_resource,
} from "../../lib/ResourceManager";

import type {
	LCConfig,
} from "../../lib/LCSReader/FileManager";
import { Simulator } from "../../lib/LCSReader/index";

import LCJson from "../../assets/circuits/half-adder.json";

const section_id = "section-half-adder";
const refDivSimulator: Ref<HTMLDivElement | null> = ref(null);
let simulator: Simulator | null;

function load_simulator() {
	if (simulator == null) {
		simulator = new Simulator(refDivSimulator.value!, LCJson as LCConfig);
	}
}

function unload_simulator() {
	if (simulator) {
		simulator.destroy();
		simulator = null;
	}
}

onMounted(() => {
	register_resource({
		id: section_id,
		constructor: load_simulator,
		destructor: unload_simulator,
	});
});

onUnmounted(() => {
	deregister_resource(section_id);
});
</script>

<style scoped>
.canvas-container {
	width: 360px;
	height: 150px;
}
</style>

