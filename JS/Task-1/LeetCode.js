//////-1-----

/**
 * @return {Function}
 */
var createHelloWorld = function () {

    return function (...args) {

        return "Hello World";

    }
};

/**
 * const f = createHelloWorld();
 * f(); // "Hello World"
 */


//////////--------------2------------

/**
 * @param {number} n
 * @return {Function} counter
 */
var createCounter = function (n) {

    return function () {
        return n++;
    };
};

/** 
 * const counter = createCounter(10)
 * counter() // 10
 * counter() // 11
 * counter() // 12
 */



/////////////-----------3-----------

/**
 * @param {string} val
 * @return {Object}
 */
var expect = function (val) {
    return {
        toBe: function (x) {
            if (val === x) return true;
            throw new Error("Not Equal");
        },
        notToBe: function (x) {
            if (val !== x) return true;
            throw new Error("Equal");
        }
    };
};

/**
 * expect(5).toBe(5); // true
 * expect(5).notToBe(5); // throws "Equal"
 */


///////////-----------4--------------

/**
 * @param {integer} init
 * @return { increment: Function, decrement: Function, reset: Function }
 */
var createCounter = function (init) {
    let val = init;
    return {
        increment: function () {
            return ++val;
        },
        decrement: function () {
            return --val;
        },
        reset: function () {
            val = init;
            return val;
        }
    };
};

/**
 * const counter = createCounter(5)
 * counter.increment(); // 6
 * counter.reset(); // 5
 * counter.decrement(); // 4
 */


//////////--------------5-------------


