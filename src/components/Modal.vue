<template>
	<div v-if="isVisible" class="modal">
		<div class="modal-header">
			<span class="close" @click="close">&times;</span>
		</div>
		<div class="modal-content flex justify-center">
			<slot></slot>
		</div>
	</div>
</template>

<script setup lang="ts">
import {
	ref,
} from "vue";

const isVisible = ref(false);
let callback: undefined | Function;

function show(x?: Function) {
	isVisible.value = true;
	callback = x;
}

function close() {
	if (typeof callback === "function") {
		callback();
	}
	isVisible.value = false;
}

defineExpose({
	show,
})
</script>

<style scoped>
.modal {
	position: fixed;
	z-index: 10000;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0,0,0,0.8);
}

.close {
	color: #eee;
	float: right;
	font-size: 2.5rem;
	font-weight: bold;
}

.modal-content {
	margin: 10% auto;
	width: 90%
}

.close:hover {
	color: black;
	text-decoration: none;
	cursor: pointer;
}
</style>

