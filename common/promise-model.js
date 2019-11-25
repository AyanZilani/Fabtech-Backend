
class PromiseModel {

    // count([where], callback)
    count(Model, where){
        return new Promise((resolve, reject) => {
            Model.count(where, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // create([data], callback)
    create(Model, data){
        return new Promise((resolve, reject) => {
            Model.create(data, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // destroyAll([where], callback)
    destroyAll(Model, where){
        return new Promise((resolve, reject) => {
            Model.destroyAll(where, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // destroyById(id, callback)
    destroyById(Model, id){
        return new Promise((resolve, reject) => {
            Model.destroyById(id, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // exists(id, callback)
    exists(Model, id){
        return new Promise((resolve, reject) => {
            Model.exists(id, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // find([filter], callback)
    find(Model, filter){
        return new Promise((resolve, reject) => {
            Model.find(filter, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // findById(id, [filter], callback)
    findById(Model, id, filter){
        return new Promise((resolve, reject) => {
            Model.findById(id, filter, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }
    // findOne([filter], callback)
    findOne(Model, filter){
        return new Promise((resolve, reject) => {
            Model.findOne(filter, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // updateAll([where], data, callback)
    updateAll(Model, where, data){
        return new Promise((resolve, reject) => {
            Model.updateAll(where, data, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // upsert(data, callback)
    upsert(Model, data){
        return new Promise((resolve, reject) => {
            Model.upsert(data, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // upsertWithWhere([where], data, callback)
    upsertWithWhere(Model, where,data){
        return new Promise((resolve, reject) => {
            Model.upsertWithWhere(where, data, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }

    // updateAttribute(name, value, callback)
    updateAttribute(Model, name, value){
        return new Promise((resolve, reject) => {
            Model.updateAttribute(name, value, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }
    // updateAttributes(data, callback)
    updateAttributes(Model, data){
        return new Promise((resolve, reject) => {
            Model.updateAttributes(data, (err, result) => {
                if (err) return reject(err)
                resolve(result)
            })
        })
    }
}
module.exports = new PromiseModel();