import {Router} from "express";
import {PostRecord} from "../records/post.record";

export const adminRouter = Router()

adminRouter
    .get('/posts/edit/:drinkId', async (req, res) => {

        const drink = await PostRecord.getOne(req.params.drinkId)
        console.log(drink)

        res.json(drink);
    })
    .post('/posts', async (req, res) => {
        const id = req.body.id

        await PostRecord.delete(id);

        const allDrinks = await PostRecord.getAll()

        res.json(allDrinks)
    })
    .post('/posts/edit/:drinkId', async (req, res) => {
        const post = new PostRecord(req.body)

        console.log(post)
        await post.edit();
        res.json(post)
    })